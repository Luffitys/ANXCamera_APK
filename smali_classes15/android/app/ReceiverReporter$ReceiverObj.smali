.class Landroid/app/ReceiverReporter$ReceiverObj;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverObj"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private receiver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Landroid/app/ReceiverReporter$ReceiverObj;

    if-eqz v0, :cond_29

    move-object v0, p1

    check-cast v0, Landroid/app/ReceiverReporter$ReceiverObj;

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    :cond_29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
