.class Landroid/telephony/mbms/InternalStreamingSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->access$000(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onMiddlewareReady()V

    return-void
.end method
