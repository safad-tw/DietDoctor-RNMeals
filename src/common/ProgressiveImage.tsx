import React from 'react';
import { Image } from 'react-native';

interface ProgressiveImageProps {
  source: any,
  style:any,
  resizeMode:any
}

const ProgressiveImage: React.FC<ProgressiveImageProps> = (props) => { 
  return (<Image {...props}/>)
};

export default ProgressiveImage;
