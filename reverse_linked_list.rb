# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev, current = nil, head

  while current
      nxt  = current.next
      current.next = prev
      prev = current
      current = nxt
  end
  prev
end
