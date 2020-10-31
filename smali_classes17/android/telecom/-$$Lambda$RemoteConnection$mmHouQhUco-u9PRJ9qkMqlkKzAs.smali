.class public final synthetic Landroid/telecom/-$$Lambda$RemoteConnection$mmHouQhUco-u9PRJ9qkMqlkKzAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/RemoteConnection$Callback;

.field public final synthetic f$1:Landroid/telecom/RemoteConnection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$RemoteConnection$mmHouQhUco-u9PRJ9qkMqlkKzAs;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iput-object p2, p0, Landroid/telecom/-$$Lambda$RemoteConnection$mmHouQhUco-u9PRJ9qkMqlkKzAs;->f$1:Landroid/telecom/RemoteConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/-$$Lambda$RemoteConnection$mmHouQhUco-u9PRJ9qkMqlkKzAs;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/-$$Lambda$RemoteConnection$mmHouQhUco-u9PRJ9qkMqlkKzAs;->f$1:Landroid/telecom/RemoteConnection;

    invoke-static {v0, v1}, Landroid/telecom/RemoteConnection;->lambda$onRttSessionRemotelyTerminated$2(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    return-void
.end method
