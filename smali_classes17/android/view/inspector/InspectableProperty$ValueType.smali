.class public final enum Landroid/view/inspector/InspectableProperty$ValueType;
.super Ljava/lang/Enum;
.source "InspectableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/inspector/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum COLOR:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum GRAVITY:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INFERRED:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INT_ENUM:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INT_FLAG:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum NONE:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum RESOURCE_ID:Landroid/view/inspector/InspectableProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->NONE:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "INFERRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->INFERRED:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "INT_ENUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->INT_ENUM:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "INT_FLAG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->INT_FLAG:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "COLOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->COLOR:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "GRAVITY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->GRAVITY:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "RESOURCE_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->RESOURCE_ID:Landroid/view/inspector/InspectableProperty$ValueType;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/inspector/InspectableProperty$ValueType;

    sget-object v9, Landroid/view/inspector/InspectableProperty$ValueType;->NONE:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v9, v1, v2

    sget-object v2, Landroid/view/inspector/InspectableProperty$ValueType;->INFERRED:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v2, v1, v3

    sget-object v2, Landroid/view/inspector/InspectableProperty$ValueType;->INT_ENUM:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/inspector/InspectableProperty$ValueType;->INT_FLAG:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/inspector/InspectableProperty$ValueType;->COLOR:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/inspector/InspectableProperty$ValueType;->GRAVITY:Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Landroid/view/inspector/InspectableProperty$ValueType;->$VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/view/inspector/InspectableProperty$ValueType;
    .registers 2

    const-class v0, Landroid/view/inspector/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/inspector/InspectableProperty$ValueType;

    return-object v0
.end method

.method public static values()[Landroid/view/inspector/InspectableProperty$ValueType;
    .registers 1

    sget-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->$VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

    invoke-virtual {v0}, [Landroid/view/inspector/InspectableProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inspector/InspectableProperty$ValueType;

    return-object v0
.end method
