# arcella

## Flutter 3, and Dart 3
no need for extra setup, just run `flutter pub get` and you are good to go

This project does not forces on UI, so it is not that pretty, but it is functional

### Specifications And Requirements

- [x] The application should allow users to select a "from" currency and a "to" currency from two separate dropdown menus.
    - I have used `Autocomplete` for this instead of `DropdownButton`

- [x] It should provide a text field for users to input the amount they want to convert.
    - I have used `TextFormField` for extra validation
  
- [x] Upon input, the application should display the converted amount based on real-time exchange rates.
    - There is `SwitchListTile` to swap the real-time exchange rates
  
- [x] Please use a free currency conversion API such as ExchangeRate-API to fetch real-time exchange rates.
    - I have used ExchangeRate-API
 
- [x] You need to implement state management to reflect the current selections and changes in the user interface.
    - Riverpod
  
- [x] The application should have basic error handling for potential network/API errors.
    - Riverpod as well

# Extra Features
- swap button
- real time conversion activation or deactivation

### Packages
- riverpod: for state management, dependency injection and error handling
- retrofit: layer on top of dio to make API calls
- freezed and json_serializable: for data classes
- form_validator: builder pattern for form validation
- gap: axis direction aware padding instead of `SizedBox`
- flutter_localizations and intl: for localization
- flutter_hooks and hooks_riverpod: for hooks and riverpod integration used for ephemeral states
  
### Architecture
- Retrofit is used to make API calls
- Repository pattern is used to abstract the data layer
- Riverpod is used for state management, dependency injection and error handling layers