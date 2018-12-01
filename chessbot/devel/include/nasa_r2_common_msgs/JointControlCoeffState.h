// Generated by gencpp from file nasa_r2_common_msgs/JointControlCoeffState.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_JOINTCONTROLCOEFFSTATE_H
#define NASA_R2_COMMON_MSGS_MESSAGE_JOINTCONTROLCOEFFSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nasa_r2_common_msgs
{
template <class ContainerAllocator>
struct JointControlCoeffState_
{
  typedef JointControlCoeffState_<ContainerAllocator> Type;

  JointControlCoeffState_()
    : state(0)  {
    }
  JointControlCoeffState_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;



  enum {
    NOTLOADED = 0u,
    LOADED = 1u,
  };


  typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> const> ConstPtr;

}; // struct JointControlCoeffState_

typedef ::nasa_r2_common_msgs::JointControlCoeffState_<std::allocator<void> > JointControlCoeffState;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointControlCoeffState > JointControlCoeffStatePtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointControlCoeffState const> JointControlCoeffStateConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "966d7f4905b379809fca49c080512d9a";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x966d7f4905b37980ULL;
  static const uint64_t static_value2 = 0x9fca49c080512d9aULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/JointControlCoeffState";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 state\n\
uint8 NOTLOADED = 0\n\
uint8 LOADED    = 1\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointControlCoeffState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::JointControlCoeffState_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_JOINTCONTROLCOEFFSTATE_H
