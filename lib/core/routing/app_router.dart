import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/screens/auth/forgot_password/forgot_password_screen.dart';
import '../../presentation/screens/auth/login/login_screen.dart';
import '../../presentation/screens/auth/register/register_screen.dart';
import '../../presentation/screens/categories/categories_screen.dart';
import '../../presentation/screens/category_detail/category_detail_screen.dart';
import '../../presentation/screens/error/error_screen.dart';
import '../../presentation/screens/error/no_connection_screen.dart';
import '../../presentation/screens/main/main_screen.dart';
import '../../presentation/screens/notification_detail/notification_detail_screen.dart';
import '../../presentation/screens/notification_settings/notification_settings_screen.dart';
import '../../presentation/screens/notifications/notifications_screen.dart';
import '../../presentation/screens/profile/profile_screen.dart';
import '../../presentation/screens/root/root_screen.dart';
import '../../presentation/screens/settings/settings_screen.dart';
import '../../presentation/screens/stats/stats_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRoute.page,
          children: [
            // Auth routes
            AutoRoute(
              path: 'auth',
              page: LoginRoute.page,
              children: [
                AutoRoute(
                  path: 'login',
                  page: LoginRoute.page,
                ),
                AutoRoute(
                  path: 'register',
                  page: RegisterRoute.page,
                ),
                AutoRoute(
                  path: 'forgot-password',
                  page: ForgotPasswordRoute.page,
                ),
              ],
            ),
            
            // Main app routes
            AutoRoute(
              path: 'main',
              page: MainRoute.page,
              children: [
                AutoRoute(
                  path: 'notifications',
                  page: NotificationsRoute.page,
                ),
                AutoRoute(
                  path: 'notifications/:id',
                  page: NotificationDetailRoute.page,
                ),
                AutoRoute(
                  path: 'categories',
                  page: CategoriesRoute.page,
                ),
                AutoRoute(
                  path: 'categories/:id',
                  page: CategoryDetailRoute.page,
                ),
                AutoRoute(
                  path: 'settings',
                  page: SettingsRoute.page,
                ),
                AutoRoute(
                  path: 'settings/profile',
                  page: ProfileRoute.page,
                ),
                AutoRoute(
                  path: 'settings/notifications',
                  page: NotificationSettingsRoute.page,
                ),
                AutoRoute(
                  path: 'stats',
                  page: StatsRoute.page,
                ),
              ],
            ),

            // Error routes
            AutoRoute(
              path: 'error',
              page: ErrorRoute.page,
            ),
            AutoRoute(
              path: 'no-connection',
              page: NoConnectionRoute.page,
            ),
          ],
        ),
      ];
}