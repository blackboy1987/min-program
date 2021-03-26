import * as React from 'react';
import { View, Text, Image } from 'remax/wechat';
import styles from './index.css';

export default () => {
  return (
    <View className={styles.app}>
        <Image className="png" mode="widthFix" src="/assets/images/welcome.jpg" />
    </View>
  );
};
