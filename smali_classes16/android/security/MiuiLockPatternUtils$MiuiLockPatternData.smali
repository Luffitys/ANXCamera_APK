.class public Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
.super Ljava/lang/Object;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/MiuiLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiLockPatternData"
.end annotation


# instance fields
.field public final mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLockFile:Ljava/lang/String;

.field public mLockFilename:Ljava/lang/String;

.field public mPasswordObserver:Landroid/os/FileObserver;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mTag:Ljava/lang/String;

    iput-object p2, p0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    return-void
.end method
