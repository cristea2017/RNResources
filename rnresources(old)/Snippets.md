# RNSnippets

## Table of Content

- Npx Run
- FlatList & Item

```
Visual Studio snippets are heavy and :

  - dont support sync.
  - full func is hard to format
```

<details>
  <summary><b>Npx Run Custom Simulator</b></summary>

#### React Native 0.60 and above

`npx react-native run-ios --simulator="iPhone 11"`

`npx react-native run-ios --device`

</details>

#





<details>
  <summary><b>FlatList and item</b></summary>

#### React Native 0.60 and above

```js
renderTableCell = e => {
  const { item, index } = e;
  return (
    <TouchableOpacity
      onPress={() => console.log("select/unselect")}
      style={styles.tableCell}
    >
      <Text style={{ textAlign: "left" }}>{item}</Text>
      <Image
        source={images.check}
        style={{
          width: 50,
          height: 30
        }}
      />
    </TouchableOpacity>
  );
};
```

```js
renderTableList() {
    let tableData = [
    'Blank',
    'Alert Notification',
    'Blood Pressure',
    'Cycling Power',
    'Cycling Speed and Cadence',
    'Find Me',
    'Glucose',
    'HID OVER GATT',
    'Health Thermometer',
    'Heart Rate',
    'Location and Navigation',
    'Phone Alert Status',
    'Polar HR Sensor',
    'Proximity',
    'Running Speed and Cadence',
    'Scan Parameters',
    'Temperature Alarm Service',
    'Time',
    ];
return (
    <FlatList
        style={{backgroundColor: 'red', flex: 1}}
        horizontal={false}
        data={tableData}
        keyExtractor={(item, index) => item + index.toString()}
        renderItem={this.renderTableCell}
    />
    );
};

```

</details>
