.class Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;
.super Landroid/database/ContentObserver;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method public constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_project_in_screening"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z
    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$302(Lcom/miui/mishare/app/view/MiShareTransmissionView;Z)Z

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$300(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setScreenThrowHighLight(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screening is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z
    invoke-static {v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$300(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiShareTransmissionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
