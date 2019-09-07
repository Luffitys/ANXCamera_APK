.class public Lcom/ss/android/ttve/common/TESpdLogManager;
.super Ljava/lang/Object;
.source "TESpdLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;
    }
.end annotation


# static fields
.field private static volatile mTESpdManager:Lcom/ss/android/ttve/common/TESpdLogManager;


# instance fields
.field private mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TESpdLogInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    return-void
.end method

.method public static getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;
    .locals 2

    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdManager:Lcom/ss/android/ttve/common/TESpdLogManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/ttve/common/TESpdLogManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdManager:Lcom/ss/android/ttve/common/TESpdLogManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/ttve/common/TESpdLogManager;

    invoke-direct {v1}, Lcom/ss/android/ttve/common/TESpdLogManager;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdManager:Lcom/ss/android/ttve/common/TESpdLogManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdManager:Lcom/ss/android/ttve/common/TESpdLogManager;

    return-object v0
.end method

.method public static getLogFiles(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p0}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->close()V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->error(Ljava/lang/String;)I

    return-void
.end method

.method public info(Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->info(ILjava/lang/String;)I

    return-void
.end method

.method public initSpdLog(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TESpdLogManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->initSpdLog(Ljava/lang/String;II)I

    move-result p0

    if-gez p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLevel(Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->setLevel(I)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESpdLogManager;->mTESpdLogInvoker:Lcom/ss/android/ttve/common/TESpdLogInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TESpdLogInvoker;->warn(Ljava/lang/String;)I

    return-void
.end method
