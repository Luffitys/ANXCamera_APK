.class public final enum Lio/reactivex/annotations/BackpressureKind;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/annotations/BackpressureKind;

.field public static final enum ERROR:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum FULL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum NONE:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum SPECIAL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "PASS_THROUGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "FULL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "SPECIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "UNBOUNDED_IN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string v1, "NONE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/annotations/BackpressureKind;

    sget-object v8, Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

    aput-object v8, v1, v2

    sget-object v2, Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;

    aput-object v2, v1, v3

    sget-object v2, Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;

    aput-object v2, v1, v4

    sget-object v2, Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;

    aput-object v2, v1, v5

    sget-object v2, Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/annotations/BackpressureKind;
    .locals 1

    const-class v0, Lio/reactivex/annotations/BackpressureKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/annotations/BackpressureKind;

    return-object p0
.end method

.method public static values()[Lio/reactivex/annotations/BackpressureKind;
    .locals 1

    sget-object v0, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

    invoke-virtual {v0}, [Lio/reactivex/annotations/BackpressureKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/annotations/BackpressureKind;

    return-object v0
.end method
