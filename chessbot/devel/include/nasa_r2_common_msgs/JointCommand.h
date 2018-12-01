// Generated by gencpp from file nasa_r2_common_msgs/JointCommand.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_JOINTCOMMAND_H
#define NASA_R2_COMMON_MSGS_MESSAGE_JOINTCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace nasa_r2_common_msgs
{
template <class ContainerAllocator>
struct JointCommand_
{
  typedef JointCommand_<ContainerAllocator> Type;

  JointCommand_()
    : header()
    , name()
    , desiredPosition()
    , desiredPositionVelocityLimit()
    , feedForwardTorque()
    , proportionalGain()
    , derivativeGain()
    , integralGain()
    , positionLoopTorqueLimit()
    , positionLoopWindupLimit()
    , torqueLoopVelocityLimit()  {
    }
  JointCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , desiredPosition(_alloc)
    , desiredPositionVelocityLimit(_alloc)
    , feedForwardTorque(_alloc)
    , proportionalGain(_alloc)
    , derivativeGain(_alloc)
    , integralGain(_alloc)
    , positionLoopTorqueLimit(_alloc)
    , positionLoopWindupLimit(_alloc)
    , torqueLoopVelocityLimit(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _desiredPosition_type;
  _desiredPosition_type desiredPosition;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _desiredPositionVelocityLimit_type;
  _desiredPositionVelocityLimit_type desiredPositionVelocityLimit;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _feedForwardTorque_type;
  _feedForwardTorque_type feedForwardTorque;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _proportionalGain_type;
  _proportionalGain_type proportionalGain;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _derivativeGain_type;
  _derivativeGain_type derivativeGain;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _integralGain_type;
  _integralGain_type integralGain;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _positionLoopTorqueLimit_type;
  _positionLoopTorqueLimit_type positionLoopTorqueLimit;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _positionLoopWindupLimit_type;
  _positionLoopWindupLimit_type positionLoopWindupLimit;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _torqueLoopVelocityLimit_type;
  _torqueLoopVelocityLimit_type torqueLoopVelocityLimit;




  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FULL;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  GRAVITY;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  INERTIA;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  NONE;

  typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> const> ConstPtr;

}; // struct JointCommand_

typedef ::nasa_r2_common_msgs::JointCommand_<std::allocator<void> > JointCommand;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointCommand > JointCommandPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::JointCommand const> JointCommandConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      JointCommand_<ContainerAllocator>::FULL =
        
          "full"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      JointCommand_<ContainerAllocator>::GRAVITY =
        
          "gravity"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      JointCommand_<ContainerAllocator>::INERTIA =
        
          "inertia"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      JointCommand_<ContainerAllocator>::NONE =
        
          "none"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c56e7e90d9ba9be819e9e813c2544894";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc56e7e90d9ba9be8ULL;
  static const uint64_t static_value2 = 0x19e9e813c2544894ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/JointCommand";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string[] name\n\
float64[] desiredPosition\n\
float64[] desiredPositionVelocityLimit\n\
float64[] feedForwardTorque\n\
float64[] proportionalGain\n\
float64[] derivativeGain\n\
float64[] integralGain\n\
float64[] positionLoopTorqueLimit\n\
float64[] positionLoopWindupLimit\n\
float64[] torqueLoopVelocityLimit\n\
\n\
string FULL           =full\n\
string GRAVITY        =gravity\n\
string INERTIA        =inertia\n\
string NONE           =none\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.desiredPosition);
      stream.next(m.desiredPositionVelocityLimit);
      stream.next(m.feedForwardTorque);
      stream.next(m.proportionalGain);
      stream.next(m.derivativeGain);
      stream.next(m.integralGain);
      stream.next(m.positionLoopTorqueLimit);
      stream.next(m.positionLoopWindupLimit);
      stream.next(m.torqueLoopVelocityLimit);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::JointCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "desiredPosition[]" << std::endl;
    for (size_t i = 0; i < v.desiredPosition.size(); ++i)
    {
      s << indent << "  desiredPosition[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.desiredPosition[i]);
    }
    s << indent << "desiredPositionVelocityLimit[]" << std::endl;
    for (size_t i = 0; i < v.desiredPositionVelocityLimit.size(); ++i)
    {
      s << indent << "  desiredPositionVelocityLimit[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.desiredPositionVelocityLimit[i]);
    }
    s << indent << "feedForwardTorque[]" << std::endl;
    for (size_t i = 0; i < v.feedForwardTorque.size(); ++i)
    {
      s << indent << "  feedForwardTorque[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.feedForwardTorque[i]);
    }
    s << indent << "proportionalGain[]" << std::endl;
    for (size_t i = 0; i < v.proportionalGain.size(); ++i)
    {
      s << indent << "  proportionalGain[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.proportionalGain[i]);
    }
    s << indent << "derivativeGain[]" << std::endl;
    for (size_t i = 0; i < v.derivativeGain.size(); ++i)
    {
      s << indent << "  derivativeGain[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.derivativeGain[i]);
    }
    s << indent << "integralGain[]" << std::endl;
    for (size_t i = 0; i < v.integralGain.size(); ++i)
    {
      s << indent << "  integralGain[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.integralGain[i]);
    }
    s << indent << "positionLoopTorqueLimit[]" << std::endl;
    for (size_t i = 0; i < v.positionLoopTorqueLimit.size(); ++i)
    {
      s << indent << "  positionLoopTorqueLimit[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.positionLoopTorqueLimit[i]);
    }
    s << indent << "positionLoopWindupLimit[]" << std::endl;
    for (size_t i = 0; i < v.positionLoopWindupLimit.size(); ++i)
    {
      s << indent << "  positionLoopWindupLimit[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.positionLoopWindupLimit[i]);
    }
    s << indent << "torqueLoopVelocityLimit[]" << std::endl;
    for (size_t i = 0; i < v.torqueLoopVelocityLimit.size(); ++i)
    {
      s << indent << "  torqueLoopVelocityLimit[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.torqueLoopVelocityLimit[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_JOINTCOMMAND_H
