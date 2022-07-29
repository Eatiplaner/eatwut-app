import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:eatiplan_mobile/utils/token/process_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var isAuth = useState<bool>(false);
    getFirstLoad() async {
      String? token = await getToken();
      if (token != null && token.isNotEmpty) {
        isAuth.value = true;
      }
    }

    useEffect(() {
      getFirstLoad();
      return null;
    }, []);
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      EIconButton(
                        icon: const Icon(Icons.arrow_back),
                        height: 40,
                        width: 40,
                        onPressed: () {
                          Get.toNamed('/auth');
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Home page',
                        style: TextStyle(fontSize: 18),
                      ),
                    ]),
              )),
          Expanded(
              flex: 1,
              child: EButton(
                label: isAuth.value ? 'Logout' : 'Login',
                onPressed: () {
                  setToken('');
                  if (isAuth.value) {
                    setToken('');
                  }
                  Get.toNamed('/auth');
                },
                variant: ButtonVariant.secondary,
              ))
        ],
      ),
    );
  }
}
