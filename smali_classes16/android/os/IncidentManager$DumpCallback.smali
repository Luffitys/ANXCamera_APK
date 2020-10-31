.class public Landroid/os/IncidentManager$DumpCallback;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpCallback"
.end annotation


# instance fields
.field mBinder:Landroid/os/IIncidentDumpCallback$Stub;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/IncidentManager$DumpCallback$1;

    invoke-direct {v0, p0}, Landroid/os/IncidentManager$DumpCallback$1;-><init>(Landroid/os/IncidentManager$DumpCallback;)V

    iput-object v0, p0, Landroid/os/IncidentManager$DumpCallback;->mBinder:Landroid/os/IIncidentDumpCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/IncidentManager$DumpCallback;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2

    iput-object p1, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/IncidentManager$DumpCallback;)I
    .registers 2

    iget v0, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/IncidentManager$DumpCallback;I)I
    .registers 2

    iput p1, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return p1
.end method


# virtual methods
.method public onDumpSection(ILjava/io/OutputStream;)V
    .registers 3

    return-void
.end method
