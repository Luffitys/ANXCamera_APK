.class Landroid/telephony/mbms/InternalStreamingServiceCallback$5;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamMethodUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$methodType:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    # getter for: Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamMethodUpdated(I)V

    return-void
.end method
