// Generated by gencpp from file beginner_tutorials/TalkGoal.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_TALKGOAL_H
#define BEGINNER_TUTORIALS_MESSAGE_TALKGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct TalkGoal_
{
  typedef TalkGoal_<ContainerAllocator> Type;

  TalkGoal_()
    : sentence()  {
    }
  TalkGoal_(const ContainerAllocator& _alloc)
    : sentence(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sentence_type;
  _sentence_type sentence;





  typedef boost::shared_ptr< ::beginner_tutorials::TalkGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::TalkGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TalkGoal_

typedef ::beginner_tutorials::TalkGoal_<std::allocator<void> > TalkGoal;

typedef boost::shared_ptr< ::beginner_tutorials::TalkGoal > TalkGoalPtr;
typedef boost::shared_ptr< ::beginner_tutorials::TalkGoal const> TalkGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::TalkGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/mypc/ROSex/catakin_ws/src/beginner_tutorials/msg', '/home/mypc/ROSex/catakin_ws/devel/share/beginner_tutorials/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TalkGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TalkGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TalkGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ee8e7a1b3ec1e5b34263db750df6246";
  }

  static const char* value(const ::beginner_tutorials::TalkGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ee8e7a1b3ec1e5bULL;
  static const uint64_t static_value2 = 0x34263db750df6246ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/TalkGoal";
  }

  static const char* value(const ::beginner_tutorials::TalkGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string sentence\n\
";
  }

  static const char* value(const ::beginner_tutorials::TalkGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sentence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TalkGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::TalkGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::TalkGoal_<ContainerAllocator>& v)
  {
    s << indent << "sentence: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sentence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_TALKGOAL_H
