import 'package:flutter/material.dart';
import 'package:rust_bridge/rust_bridge.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTOP Client Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const VtopHomePage(),
    );
  }
}

class VtopHomePage extends StatefulWidget {
  const VtopHomePage({super.key});

  @override
  State<VtopHomePage> createState() => _VtopHomePageState();
}

class _VtopHomePageState extends State<VtopHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  VtopClient? _client;
  bool _isLoading = false;
  String _status = '';
  SemesterData? _semesters;
  AttendanceData? _attendance;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateStatus(String status) {
    setState(() {
      _status = status;
    });
  }

  Future<void> _testConnection() async {
    final greeting = greet(name: "VTOP User");
    _updateStatus('Rust bridge test: $greeting');
  }

  Future<void> _createClient() async {
    if (_usernameController.text.isEmpty || _passwordController.text.isEmpty) {
      _updateStatus('Please enter username and password');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      _client = getVtopClient(
        username: _usernameController.text,
        password: _passwordController.text,
      );
      _updateStatus('VTOP client created successfully');
    } catch (e) {
      _updateStatus('Error creating client: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _login() async {
    if (_client == null) {
      _updateStatus('Please create a client first');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await vtopClientLogin(client: _client!);
      _updateStatus('Login successful');
    } catch (e) {
      _updateStatus('Login failed: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _fetchSemesters() async {
    if (_client == null) {
      _updateStatus('Please create a client and login first');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      _semesters = await fetchSemesters(client: _client!);
      _updateStatus('Fetched ${_semesters!.semesters.length} semesters');
      setState(() {});
    } catch (e) {
      _updateStatus('Error fetching semesters: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _fetchAttendance(String semesterId) async {
    if (_client == null) {
      _updateStatus('Please create a client and login first');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      _attendance = await fetchAttendance(
        client: _client!,
        semesterId: semesterId,
      );
      _updateStatus(
        'Fetched attendance for ${_attendance!.records.length} courses',
      );
      setState(() {});
    } catch (e) {
      _updateStatus('Error fetching attendance: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VTOP Client Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Test connection
            ElevatedButton(
              onPressed: _testConnection,
              child: const Text('Test Rust Bridge Connection'),
            ),
            const SizedBox(height: 16),

            // Login form
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'VTOP Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: _isLoading ? null : _createClient,
                            child: const Text('Create Client'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: _isLoading ? null : _login,
                            child: const Text('Login'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Actions
            ElevatedButton(
              onPressed: _isLoading ? null : _fetchSemesters,
              child: const Text('Fetch Semesters'),
            ),
            const SizedBox(height: 16),

            // Status
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Status: $_status',
                style: const TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 16),

            // Results
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (_semesters != null) ...[
                      const Text(
                        'Semesters:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...(_semesters!.semesters.map(
                        (semester) => Card(
                          child: ListTile(
                            title: Text(semester.name),
                            subtitle: Text('ID: ${semester.id}'),
                            trailing: ElevatedButton(
                              onPressed: () => _fetchAttendance(semester.id),
                              child: const Text('Get Attendance'),
                            ),
                          ),
                        ),
                      )),
                    ],
                    if (_attendance != null) ...[
                      const SizedBox(height: 16),
                      const Text(
                        'Attendance:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...(_attendance!.records.map(
                        (record) => Card(
                          child: ListTile(
                            title: Text(record.courseName),
                            subtitle: Text(
                              '${record.courseCode} - ${record.attendancePercentage}%',
                            ),
                            trailing: Text(
                              '${record.classesAttended}/${record.totalClasses}',
                            ),
                          ),
                        ),
                      )),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
