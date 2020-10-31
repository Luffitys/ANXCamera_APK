.class public Landroid/os/perfdebug/VsyncFrame;
.super Ljava/lang/Object;
.source "VsyncFrame.java"


# static fields
.field private static final sInstance:Landroid/os/perfdebug/VsyncFrame;


# instance fields
.field private mCurFrame:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/perfdebug/VsyncFrame;

    invoke-direct {v0}, Landroid/os/perfdebug/VsyncFrame;-><init>()V

    sput-object v0, Landroid/os/perfdebug/VsyncFrame;->sInstance:Landroid/os/perfdebug/VsyncFrame;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/perfdebug/VsyncFrame;->mCurFrame:I

    return-void
.end method

.method public static getInstance()Landroid/os/perfdebug/VsyncFrame;
    .registers 1

    sget-object v0, Landroid/os/perfdebug/VsyncFrame;->sInstance:Landroid/os/perfdebug/VsyncFrame;

    return-object v0
.end method


# virtual methods
.method public getCurFrame()I
    .registers 2

    iget v0, p0, Landroid/os/perfdebug/VsyncFrame;->mCurFrame:I

    return v0
.end method

.method public updateCurFrame(I)V
    .registers 2

    iput p1, p0, Landroid/os/perfdebug/VsyncFrame;->mCurFrame:I

    return-void
.end method
