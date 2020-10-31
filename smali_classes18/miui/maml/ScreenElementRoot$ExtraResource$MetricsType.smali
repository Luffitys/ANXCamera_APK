.class final enum Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
.super Ljava/lang/Enum;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetricsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "DEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "SW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "SW_DEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    sget-object v5, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v5, v1, v2

    sget-object v2, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .registers 2

    const-class v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .registers 1

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v0}, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object v0
.end method
