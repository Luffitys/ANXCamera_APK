.class public final enum Lmiui/util/async/Task$Priority;
.super Ljava/lang/Enum;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/async/Task$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/util/async/Task$Priority;

.field public static final enum High:Lmiui/util/async/Task$Priority;

.field public static final enum Low:Lmiui/util/async/Task$Priority;

.field public static final enum Normal:Lmiui/util/async/Task$Priority;

.field public static final enum RealTime:Lmiui/util/async/Task$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "Normal"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "High"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "RealTime"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/util/async/Task$Priority;

    sget-object v6, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/util/async/Task$Priority;->$VALUES:[Lmiui/util/async/Task$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/async/Task$Priority;
    .registers 2

    const-class v0, Lmiui/util/async/Task$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task$Priority;

    return-object v0
.end method

.method public static values()[Lmiui/util/async/Task$Priority;
    .registers 1

    sget-object v0, Lmiui/util/async/Task$Priority;->$VALUES:[Lmiui/util/async/Task$Priority;

    invoke-virtual {v0}, [Lmiui/util/async/Task$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/async/Task$Priority;

    return-object v0
.end method
