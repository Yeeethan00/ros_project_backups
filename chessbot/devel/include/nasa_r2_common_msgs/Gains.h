// Generated by gencpp from file nasa_r2_common_msgs/Gains.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_GAINS_H
#define NASA_R2_COMMON_MSGS_MESSAGE_GAINS_H


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
struct Gains_
{
  typedef Gains_<ContainerAllocator> Type;

  Gains_()
    : joint_names()
    , naturalFreq()
    , dampingRatio()
    , K()
    , D()
    , I()
    , windupLimit()  {
    }
  Gains_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , naturalFreq(_alloc)
    , dampingRatio(_alloc)
    , K(_alloc)
    , D(_alloc)
    , I(_alloc)
    , windupLimit(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _naturalFreq_type;
  _naturalFreq_type naturalFreq;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dampingRatio_type;
  _dampingRatio_type dampingRatio;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _K_type;
  _K_type K;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _D_type;
  _D_type D;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _I_type;
  _I_type I;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _windupLimit_type;
  _windupLimit_type windupLimit;





  typedef boost::shared_ptr< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> const> ConstPtr;

}; // struct Gains_

typedef ::nasa_r2_common_msgs::Gains_<std::allocator<void> > Gains;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::Gains > GainsPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::Gains const> GainsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::Gains_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f78899cbb8067fadfd895405ba5d6742";
  }

  static const char* value(const ::nasa_r2_common_msgs::Gains_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf78899cbb8067fadULL;
  static const uint64_t static_value2 = 0xfd895405ba5d6742ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/Gains";
  }

  static const char* value(const ::nasa_r2_common_msgs::Gains_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] joint_names\n\
float64[] naturalFreq\n\
float64[] dampingRatio\n\
float64[] K\n\
float64[] D\n\
float64[] I\n\
float64[] windupLimit\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::Gains_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.naturalFreq);
      stream.next(m.dampingRatio);
      stream.next(m.K);
      stream.next(m.D);
      stream.next(m.I);
      stream.next(m.windupLimit);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gains_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::Gains_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::Gains_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "naturalFreq[]" << std::endl;
    for (size_t i = 0; i < v.naturalFreq.size(); ++i)
    {
      s << indent << "  naturalFreq[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.naturalFreq[i]);
    }
    s << indent << "dampingRatio[]" << std::endl;
    for (size_t i = 0; i < v.dampingRatio.size(); ++i)
    {
      s << indent << "  dampingRatio[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dampingRatio[i]);
    }
    s << indent << "K[]" << std::endl;
    for (size_t i = 0; i < v.K.size(); ++i)
    {
      s << indent << "  K[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.K[i]);
    }
    s << indent << "D[]" << std::endl;
    for (size_t i = 0; i < v.D.size(); ++i)
    {
      s << indent << "  D[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.D[i]);
    }
    s << indent << "I[]" << std::endl;
    for (size_t i = 0; i < v.I.size(); ++i)
    {
      s << indent << "  I[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.I[i]);
    }
    s << indent << "windupLimit[]" << std::endl;
    for (size_t i = 0; i < v.windupLimit.size(); ++i)
    {
      s << indent << "  windupLimit[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.windupLimit[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_GAINS_H
