.class Landroid/telephony/mbms/InternalGroupCallCallback$3;
.super Ljava/lang/Object;
.source "InternalGroupCallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallCallback;->onBroadcastSignalStrengthUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

.field final synthetic val$signalStrength:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalGroupCallCallback;I)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallCallback$3;->this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalGroupCallCallback$3;->val$signalStrength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback$3;->this$0:Landroid/telephony/mbms/InternalGroupCallCallback;

    # getter for: Landroid/telephony/mbms/InternalGroupCallCallback;->mAppCallback:Landroid/telephony/mbms/GroupCallCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallCallback;->access$000(Landroid/telephony/mbms/InternalGroupCallCallback;)Landroid/telephony/mbms/GroupCallCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalGroupCallCallback$3;->val$signalStrength:I

    invoke-interface {v0, v1}, Landroid/telephony/mbms/GroupCallCallback;->onBroadcastSignalStrengthUpdated(I)V

    return-void
.end method
