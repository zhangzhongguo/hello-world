import pexpect
child = pexpect.spawn('ssh root@139.196.43.187')
child.expect('assword:')
child.sendline('china123')
i = child.expect(['Permission denied', 'Terminal type', '[#\$]'])
if i == 0:
    print('Permission denied on host. Can\'t login')
elif i == 1:
    print('Login OK... need to send terminal type.')
    child.sendline('vt100')
    child.expect('[#\$]')
elif i == 2:
    print('Login OK.')
    print('Shell command ()prompt', child.afte)
