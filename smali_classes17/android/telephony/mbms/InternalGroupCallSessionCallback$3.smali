.class Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalGroupCallSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onServiceInterfaceAvailable(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

.field final synthetic val$index:I

.field final synthetic val$interfaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->val$interfaceName:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->access$000(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->val$interfaceName:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;->val$index:I

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onServiceInterfaceAvailable(Ljava/lang/String;I)V

    return-void
.end method
