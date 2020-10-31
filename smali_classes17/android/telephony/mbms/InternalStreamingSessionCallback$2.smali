.class Landroid/telephony/mbms/InternalStreamingSessionCallback$2;
.super Ljava/lang/Object;
.source "InternalStreamingSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingSessionCallback;->onStreamingServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;->val$services:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->access$000(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;->val$services:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onStreamingServicesUpdated(Ljava/util/List;)V

    return-void
.end method
