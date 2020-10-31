.class final enum Lmiui/maml/elements/AdvancedSlider$State;
.super Ljava/lang/Enum;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/elements/AdvancedSlider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/AdvancedSlider$State;

.field public static final enum Invalid:Lmiui/maml/elements/AdvancedSlider$State;

.field public static final enum Normal:Lmiui/maml/elements/AdvancedSlider$State;

.field public static final enum Pressed:Lmiui/maml/elements/AdvancedSlider$State;

.field public static final enum Reached:Lmiui/maml/elements/AdvancedSlider$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$State;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$State;

    const-string v1, "Pressed"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$State;

    const-string v1, "Reached"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$State;

    const-string v1, "Invalid"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/maml/elements/AdvancedSlider$State;

    sget-object v6, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/maml/elements/AdvancedSlider$State;->$VALUES:[Lmiui/maml/elements/AdvancedSlider$State;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/AdvancedSlider$State;
    .registers 2

    const-class v0, Lmiui/maml/elements/AdvancedSlider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/AdvancedSlider$State;
    .registers 1

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->$VALUES:[Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0}, [Lmiui/maml/elements/AdvancedSlider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/AdvancedSlider$State;

    return-object v0
.end method
