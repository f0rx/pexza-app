part of view_all_properties_screen.dart;

extension _XViewAllPropertiesScreenState on _ViewAllPropertiesScreenState {
  Widget _buildFloatingActionButton(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 200),
      reverseDuration: Duration(milliseconds: 200),
      alignment: Alignment.bottomRight,
      vsync: this,
      child: Container(
        margin: EdgeInsets.only(left: 32),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6.0)],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (!_wrappedOptions)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // __buildDivisionsOption(),
                    // __buildDirectionOption(),
                    __buildReverseOption(),
                  ],
                ),
              ),
            FloatingActionButton(
              elevation: 0.0,
              highlightElevation: 0.0,
              onPressed: () =>
                  setState(() => _wrappedOptions = !_wrappedOptions),
              child: Icon(Icons.build),
            ),
          ],
        ),
      ),
    );
  }

  Widget __buildDivisionsOption() {
    return _buildOption(
      "Layers",
      CupertinoSegmentedControl<int>(
        groupValue: _kDefaultLayers,
        children: {2: Text("2"), 3: Text("3"), 4: Text("4")},
        onValueChanged: (value) => setState(() {
          _controller.forward(from: 0.0);
          _kDefaultLayers = value;
        }),
      ),
    );
  }

  Widget __buildReverseOption() {
    return _buildOption(
      "Reverse",
      CupertinoSegmentedControl(
        groupValue: _reversed,
        children: {false: Text("no"), true: Text("yes")},
        onValueChanged: (value) => setState(() {
          _controller.forward(from: 0.0);
          _reversed = value;
        }),
      ),
    );
  }

  Widget __buildDirectionOption() {
    return _buildOption(
      "Direction",
      CupertinoSegmentedControl(
        groupValue: _direction,
        children: {
          Axis.vertical: Text("vertical"),
          Axis.horizontal: Text("horizontal")
        },
        onValueChanged: (value) => setState(() {
          _controller.forward(from: 0.0);
          _direction = value;
        }),
      ),
    );
  }

  Widget _buildOption(String text, Widget child) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, left: 8.0, bottom: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Text(text),
            flex: 1,
          ),
          Expanded(
            child: child,
            flex: 2,
          ),
        ],
      ),
    );
  }
}
