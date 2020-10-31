.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final androidTags:[Ljava/lang/String;

.field private isGroupOn:Z

.field private final miuiTags:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object v1, p2

    :goto_c
    iput-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    if-nez p3, :cond_13

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v1, p3

    :goto_14
    iput-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v1, 0x1

    goto :goto_15

    :cond_f
    const/4 v3, -0x1

    if-ne v0, v3, :cond_15

    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v1, 0x1

    :cond_15
    :goto_15
    if-eqz v1, :cond_32

    iget-object v0, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_1b
    if-ge v4, v3, :cond_25

    aget-object v5, v0, v4

    invoke-static {v5}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_25
    iget-object v0, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v3, v0

    :goto_28
    if-ge v2, v3, :cond_32

    aget-object v4, v0, v2

    invoke-static {v4}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_f

    iput-boolean v3, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    goto :goto_14

    :cond_f
    if-ne v0, v1, :cond_14

    iput-boolean v1, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    :cond_14
    :goto_14
    if-eqz v2, :cond_31

    iget-object v0, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v1, v0

    move v4, v3

    :goto_1a
    if-ge v4, v1, :cond_24

    aget-object v5, v0, v4

    invoke-static {v5}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_24
    iget-object v0, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v1, v0

    :goto_27
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    invoke-static {v4}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
