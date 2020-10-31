.class public final enum Lmiui/imagefilters/FilterParamType$ParamType;
.super Ljava/lang/Enum;
.source "FilterParamType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/FilterParamType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/imagefilters/FilterParamType$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/imagefilters/FilterParamType$ParamType;

.field public static final enum DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

.field public static final enum ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lmiui/imagefilters/FilterParamType$ParamType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/imagefilters/FilterParamType$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    new-instance v0, Lmiui/imagefilters/FilterParamType$ParamType;

    const-string v1, "ICON_SIZE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/imagefilters/FilterParamType$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    const/4 v1, 0x2

    new-array v1, v1, [Lmiui/imagefilters/FilterParamType$ParamType;

    sget-object v4, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lmiui/imagefilters/FilterParamType$ParamType;->$VALUES:[Lmiui/imagefilters/FilterParamType$ParamType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/imagefilters/FilterParamType$ParamType;
    .registers 2

    const-class v0, Lmiui/imagefilters/FilterParamType$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/imagefilters/FilterParamType$ParamType;

    return-object v0
.end method

.method public static values()[Lmiui/imagefilters/FilterParamType$ParamType;
    .registers 1

    sget-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->$VALUES:[Lmiui/imagefilters/FilterParamType$ParamType;

    invoke-virtual {v0}, [Lmiui/imagefilters/FilterParamType$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/imagefilters/FilterParamType$ParamType;

    return-object v0
.end method
