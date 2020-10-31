.class public final synthetic Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/RemoteConnection$Callback;

.field public final synthetic f$1:Landroid/telecom/RemoteConnection;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iput-object p2, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$1:Landroid/telecom/RemoteConnection;

    iput p3, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$1:Landroid/telecom/RemoteConnection;

    iget v2, p0, Landroid/telecom/-$$Lambda$RemoteConnection$AwagQDJDcNDplrFif6DlYZldL5E;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telecom/RemoteConnection;->lambda$onRttInitiationFailure$1(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    return-void
.end method
