.class public Landroid/os/strictmode/InstanceCountViolation;
.super Landroid/os/strictmode/Violation;
.source "InstanceCountViolation.java"


# static fields
.field private static final FAKE_STACK:[Ljava/lang/StackTraceElement;


# instance fields
.field private final mInstances:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    new-instance v2, Ljava/lang/StackTraceElement;

    const-string v3, "android.os.StrictMode"

    const-string/jumbo v4, "setClassInstanceLimit"

    const-string v5, "StrictMode.java"

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Landroid/os/strictmode/InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JI)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; instances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/strictmode/InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Landroid/os/strictmode/InstanceCountViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-wide p2, p0, Landroid/os/strictmode/InstanceCountViolation;->mInstances:J

    return-void
.end method


# virtual methods
.method public getNumberOfInstances()J
    .registers 3

    iget-wide v0, p0, Landroid/os/strictmode/InstanceCountViolation;->mInstances:J

    return-wide v0
.end method
