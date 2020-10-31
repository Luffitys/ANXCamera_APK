.class Lmiui/slide/SlideCoverEventManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/slide/SlideCoverEventManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$1;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$1;->this$0:Lmiui/slide/SlideCoverEventManager;

    # setter for: Lmiui/slide/SlideCoverEventManager;->mPhoneState:I
    invoke-static {v0, p1}, Lmiui/slide/SlideCoverEventManager;->access$002(Lmiui/slide/SlideCoverEventManager;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$1;->this$0:Lmiui/slide/SlideCoverEventManager;

    # getter for: Lmiui/slide/SlideCoverEventManager;->mPhoneState:I
    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$000(Lmiui/slide/SlideCoverEventManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideCoverEventManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
