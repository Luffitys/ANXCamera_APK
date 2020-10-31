.class public final synthetic Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/controls/ControlsProviderService$RequestHandler;

.field public final synthetic f$1:Landroid/service/controls/IControlsActionCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$0:Landroid/service/controls/ControlsProviderService$RequestHandler;

    iput-object p2, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$1:Landroid/service/controls/IControlsActionCallback;

    iput-object p3, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$0:Landroid/service/controls/ControlsProviderService$RequestHandler;

    iget-object v1, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$1:Landroid/service/controls/IControlsActionCallback;

    iget-object v2, p0, Landroid/service/controls/-$$Lambda$ControlsProviderService$RequestHandler$mRK5NjhY1D2BY_5KfsEN3snmSCg;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler;->lambda$consumerFor$0$ControlsProviderService$RequestHandler(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
