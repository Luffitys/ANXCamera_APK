.class public final enum Lmiui/maml/elements/VariableArrayElement$Type;
.super Ljava/lang/Enum;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/elements/VariableArrayElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

.field public static final enum DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

.field public static final enum STRING:Lmiui/maml/elements/VariableArrayElement$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lmiui/maml/elements/VariableArrayElement$Type;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    new-instance v0, Lmiui/maml/elements/VariableArrayElement$Type;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/VariableArrayElement$Type;
    .registers 2

    const-class v0, Lmiui/maml/elements/VariableArrayElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/VariableArrayElement$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/VariableArrayElement$Type;
    .registers 1

    sget-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

    invoke-virtual {v0}, [Lmiui/maml/elements/VariableArrayElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/VariableArrayElement$Type;

    return-object v0
.end method
