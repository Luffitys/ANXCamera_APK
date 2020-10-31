.class Landroid/os/TestLooperManager$MessageExecution;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageExecution"
.end annotation


# instance fields
.field private m:Landroid/os/Message;

.field private response:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/TestLooperManager$MessageExecution;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$300(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object p1
.end method
