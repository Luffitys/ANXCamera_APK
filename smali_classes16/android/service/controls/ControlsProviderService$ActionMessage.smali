.class Landroid/service/controls/ControlsProviderService$ActionMessage;
.super Ljava/lang/Object;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionMessage"
.end annotation


# instance fields
.field final mAction:Landroid/service/controls/actions/ControlAction;

.field final mCb:Landroid/service/controls/IControlsActionCallback;

.field final mControlId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mAction:Landroid/service/controls/actions/ControlAction;

    iput-object p3, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mCb:Landroid/service/controls/IControlsActionCallback;

    return-void
.end method
