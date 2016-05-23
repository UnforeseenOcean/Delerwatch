Loop{
Random, spamkey1, 1, 10
loop, %spamkey1%
{
Send {CapsLock}
}
Sleep, 10
Random, spamkey2, 1, 10
loop, %spamkey2%
{
Send {NumLock}
}
Sleep, 10
Random, spamkey3, 1, 10
loop, %spamkey3%
{
Send {ScrollLock}
}
Sleep, 10
}
