.class public final Lmiui/log/MiuiTag;
.super Ljava/lang/Object;
.source "MiuiTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field public final defaultOn:Z

.field public final id:I

.field private isTagOn:Z

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/log/MiuiTag;->id:I

    iput-object p2, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean p3, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    goto :goto_14

    :cond_e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    goto :goto_12

    :cond_e
    if-ne v0, v1, :cond_12

    iput-boolean v1, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
