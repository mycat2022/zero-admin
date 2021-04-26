// Code generated by goctl. DO NOT EDIT!
// Source: sys.proto

package server

import (
	"context"

	"go-zero-admin/rpc/sys/internal/logic"
	"go-zero-admin/rpc/sys/internal/svc"
	"go-zero-admin/rpc/sys/sys"
)

type SysServer struct {
	svcCtx *svc.ServiceContext
}

func NewSysServer(svcCtx *svc.ServiceContext) *SysServer {
	return &SysServer{
		svcCtx: svcCtx,
	}
}

func (s *SysServer) Login(ctx context.Context, in *sys.LoginReq) (*sys.LoginResp, error) {
	l := logic.NewLoginLogic(ctx, s.svcCtx)
	return l.Login(in)
}

func (s *SysServer) UserInfo(ctx context.Context, in *sys.InfoReq) (*sys.InfoResp, error) {
	l := logic.NewUserInfoLogic(ctx, s.svcCtx)
	return l.UserInfo(in)
}

func (s *SysServer) UserAdd(ctx context.Context, in *sys.UserAddReq) (*sys.UserAddResp, error) {
	l := logic.NewUserAddLogic(ctx, s.svcCtx)
	return l.UserAdd(in)
}

func (s *SysServer) UserList(ctx context.Context, in *sys.UserListReq) (*sys.UserListResp, error) {
	l := logic.NewUserListLogic(ctx, s.svcCtx)
	return l.UserList(in)
}

func (s *SysServer) UserUpdate(ctx context.Context, in *sys.UserUpdateReq) (*sys.UserUpdateResp, error) {
	l := logic.NewUserUpdateLogic(ctx, s.svcCtx)
	return l.UserUpdate(in)
}

func (s *SysServer) UserDelete(ctx context.Context, in *sys.UserDeleteReq) (*sys.UserDeleteResp, error) {
	l := logic.NewUserDeleteLogic(ctx, s.svcCtx)
	return l.UserDelete(in)
}

func (s *SysServer) ReSetPassword(ctx context.Context, in *sys.ReSetPasswordReq) (*sys.ReSetPasswordResp, error) {
	l := logic.NewReSetPasswordLogic(ctx, s.svcCtx)
	return l.ReSetPassword(in)
}

func (s *SysServer) UpdateUserStatus(ctx context.Context, in *sys.UserStatusReq) (*sys.UserStatusResp, error) {
	l := logic.NewUpdateUserStatusLogic(ctx, s.svcCtx)
	return l.UpdateUserStatus(in)
}

func (s *SysServer) RoleAdd(ctx context.Context, in *sys.RoleAddReq) (*sys.RoleAddResp, error) {
	l := logic.NewRoleAddLogic(ctx, s.svcCtx)
	return l.RoleAdd(in)
}

func (s *SysServer) RoleList(ctx context.Context, in *sys.RoleListReq) (*sys.RoleListResp, error) {
	l := logic.NewRoleListLogic(ctx, s.svcCtx)
	return l.RoleList(in)
}

func (s *SysServer) RoleUpdate(ctx context.Context, in *sys.RoleUpdateReq) (*sys.RoleUpdateResp, error) {
	l := logic.NewRoleUpdateLogic(ctx, s.svcCtx)
	return l.RoleUpdate(in)
}

func (s *SysServer) RoleDelete(ctx context.Context, in *sys.RoleDeleteReq) (*sys.RoleDeleteResp, error) {
	l := logic.NewRoleDeleteLogic(ctx, s.svcCtx)
	return l.RoleDelete(in)
}

func (s *SysServer) UpdateRoleRole(ctx context.Context, in *sys.UpdateRoleRoleReq) (*sys.UpdateRoleRoleResp, error) {
	l := logic.NewUpdateRoleRoleLogic(ctx, s.svcCtx)
	return l.UpdateRoleRole(in)
}

func (s *SysServer) QueryMenuByRoleId(ctx context.Context, in *sys.QueryMenuByRoleIdReq) (*sys.QueryMenuByRoleIdResp, error) {
	l := logic.NewQueryMenuByRoleIdLogic(ctx, s.svcCtx)
	return l.QueryMenuByRoleId(in)
}

func (s *SysServer) UpdateMenuRole(ctx context.Context, in *sys.UpdateMenuRoleReq) (*sys.UpdateMenuRoleResp, error) {
	l := logic.NewUpdateMenuRoleLogic(ctx, s.svcCtx)
	return l.UpdateMenuRole(in)
}

func (s *SysServer) MenuAdd(ctx context.Context, in *sys.MenuAddReq) (*sys.MenuAddResp, error) {
	l := logic.NewMenuAddLogic(ctx, s.svcCtx)
	return l.MenuAdd(in)
}

func (s *SysServer) MenuList(ctx context.Context, in *sys.MenuListReq) (*sys.MenuListResp, error) {
	l := logic.NewMenuListLogic(ctx, s.svcCtx)
	return l.MenuList(in)
}

func (s *SysServer) MenuUpdate(ctx context.Context, in *sys.MenuUpdateReq) (*sys.MenuUpdateResp, error) {
	l := logic.NewMenuUpdateLogic(ctx, s.svcCtx)
	return l.MenuUpdate(in)
}

func (s *SysServer) MenuDelete(ctx context.Context, in *sys.MenuDeleteReq) (*sys.MenuDeleteResp, error) {
	l := logic.NewMenuDeleteLogic(ctx, s.svcCtx)
	return l.MenuDelete(in)
}

func (s *SysServer) DictAdd(ctx context.Context, in *sys.DictAddReq) (*sys.DictAddResp, error) {
	l := logic.NewDictAddLogic(ctx, s.svcCtx)
	return l.DictAdd(in)
}

func (s *SysServer) DictList(ctx context.Context, in *sys.DictListReq) (*sys.DictListResp, error) {
	l := logic.NewDictListLogic(ctx, s.svcCtx)
	return l.DictList(in)
}

func (s *SysServer) DictUpdate(ctx context.Context, in *sys.DictUpdateReq) (*sys.DictUpdateResp, error) {
	l := logic.NewDictUpdateLogic(ctx, s.svcCtx)
	return l.DictUpdate(in)
}

func (s *SysServer) DictDelete(ctx context.Context, in *sys.DictDeleteReq) (*sys.DictDeleteResp, error) {
	l := logic.NewDictDeleteLogic(ctx, s.svcCtx)
	return l.DictDelete(in)
}

func (s *SysServer) DeptAdd(ctx context.Context, in *sys.DeptAddReq) (*sys.DeptAddResp, error) {
	l := logic.NewDeptAddLogic(ctx, s.svcCtx)
	return l.DeptAdd(in)
}

func (s *SysServer) DeptList(ctx context.Context, in *sys.DeptListReq) (*sys.DeptListResp, error) {
	l := logic.NewDeptListLogic(ctx, s.svcCtx)
	return l.DeptList(in)
}

func (s *SysServer) DeptUpdate(ctx context.Context, in *sys.DeptUpdateReq) (*sys.DeptUpdateResp, error) {
	l := logic.NewDeptUpdateLogic(ctx, s.svcCtx)
	return l.DeptUpdate(in)
}

func (s *SysServer) DeptDelete(ctx context.Context, in *sys.DeptDeleteReq) (*sys.DeptDeleteResp, error) {
	l := logic.NewDeptDeleteLogic(ctx, s.svcCtx)
	return l.DeptDelete(in)
}

func (s *SysServer) LoginLogAdd(ctx context.Context, in *sys.LoginLogAddReq) (*sys.LoginLogAddResp, error) {
	l := logic.NewLoginLogAddLogic(ctx, s.svcCtx)
	return l.LoginLogAdd(in)
}

func (s *SysServer) LoginLogList(ctx context.Context, in *sys.LoginLogListReq) (*sys.LoginLogListResp, error) {
	l := logic.NewLoginLogListLogic(ctx, s.svcCtx)
	return l.LoginLogList(in)
}

func (s *SysServer) LoginLogDelete(ctx context.Context, in *sys.LoginLogDeleteReq) (*sys.LoginLogDeleteResp, error) {
	l := logic.NewLoginLogDeleteLogic(ctx, s.svcCtx)
	return l.LoginLogDelete(in)
}

func (s *SysServer) SysLogAdd(ctx context.Context, in *sys.SysLogAddReq) (*sys.SysLogAddResp, error) {
	l := logic.NewSysLogAddLogic(ctx, s.svcCtx)
	return l.SysLogAdd(in)
}

func (s *SysServer) SysLogList(ctx context.Context, in *sys.SysLogListReq) (*sys.SysLogListResp, error) {
	l := logic.NewSysLogListLogic(ctx, s.svcCtx)
	return l.SysLogList(in)
}

func (s *SysServer) SysLogDelete(ctx context.Context, in *sys.SysLogDeleteReq) (*sys.SysLogDeleteResp, error) {
	l := logic.NewSysLogDeleteLogic(ctx, s.svcCtx)
	return l.SysLogDelete(in)
}

func (s *SysServer) ConfigAdd(ctx context.Context, in *sys.ConfigAddReq) (*sys.ConfigAddResp, error) {
	l := logic.NewConfigAddLogic(ctx, s.svcCtx)
	return l.ConfigAdd(in)
}

func (s *SysServer) ConfigList(ctx context.Context, in *sys.ConfigListReq) (*sys.ConfigListResp, error) {
	l := logic.NewConfigListLogic(ctx, s.svcCtx)
	return l.ConfigList(in)
}

func (s *SysServer) ConfigUpdate(ctx context.Context, in *sys.ConfigUpdateReq) (*sys.ConfigUpdateResp, error) {
	l := logic.NewConfigUpdateLogic(ctx, s.svcCtx)
	return l.ConfigUpdate(in)
}

func (s *SysServer) ConfigDelete(ctx context.Context, in *sys.ConfigDeleteReq) (*sys.ConfigDeleteResp, error) {
	l := logic.NewConfigDeleteLogic(ctx, s.svcCtx)
	return l.ConfigDelete(in)
}

func (s *SysServer) UpdateConfigRole(ctx context.Context, in *sys.UpdateConfigRoleReq) (*sys.UpdateConfigRoleResp, error) {
	l := logic.NewUpdateConfigRoleLogic(ctx, s.svcCtx)
	return l.UpdateConfigRole(in)
}

func (s *SysServer) JobAdd(ctx context.Context, in *sys.JobAddReq) (*sys.JobAddResp, error) {
	l := logic.NewJobAddLogic(ctx, s.svcCtx)
	return l.JobAdd(in)
}

func (s *SysServer) JobList(ctx context.Context, in *sys.JobListReq) (*sys.JobListResp, error) {
	l := logic.NewJobListLogic(ctx, s.svcCtx)
	return l.JobList(in)
}

func (s *SysServer) JobUpdate(ctx context.Context, in *sys.JobUpdateReq) (*sys.JobUpdateResp, error) {
	l := logic.NewJobUpdateLogic(ctx, s.svcCtx)
	return l.JobUpdate(in)
}

func (s *SysServer) JobDelete(ctx context.Context, in *sys.JobDeleteReq) (*sys.JobDeleteResp, error) {
	l := logic.NewJobDeleteLogic(ctx, s.svcCtx)
	return l.JobDelete(in)
}
