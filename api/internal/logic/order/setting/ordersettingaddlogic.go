package logic

import (
	"context"
	"encoding/json"
	"go-zero-admin/api/internal/common/errorx"
	"go-zero-admin/rpc/oms/omsclient"

	"go-zero-admin/api/internal/svc"
	"go-zero-admin/api/internal/types"

	"github.com/tal-tech/go-zero/core/logx"
)

type OrderSettingAddLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewOrderSettingAddLogic(ctx context.Context, svcCtx *svc.ServiceContext) OrderSettingAddLogic {
	return OrderSettingAddLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *OrderSettingAddLogic) OrderSettingAdd(req types.AddOrderSettingReq) (*types.AddOrderSettingResp, error) {
	_, err := l.svcCtx.Oms.OrderSettingAdd(l.ctx, &omsclient.OrderSettingAddReq{
		FlashOrderOvertime:  req.FlashOrderOvertime,
		NormalOrderOvertime: req.NormalOrderOvertime,
		ConfirmOvertime:     req.ConfirmOvertime,
		FinishOvertime:      req.FinishOvertime,
		CommentOvertime:     req.CommentOvertime,
	})

	if err != nil {
		reqStr, _ := json.Marshal(req)
		logx.Errorf("添加订单设置信息失败,参数:%s,异常:%s", reqStr, err.Error())
		return nil, errorx.NewDefaultError("添加订单设置失败")
	}

	return &types.AddOrderSettingResp{
		Code:    "000000",
		Message: "添加订单设置成功",
	}, nil
}
