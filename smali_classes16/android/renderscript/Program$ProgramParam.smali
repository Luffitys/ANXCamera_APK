.class final enum Landroid/renderscript/Program$ProgramParam;
.super Ljava/lang/Enum;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProgramParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Program$ProgramParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$ProgramParam;

.field public static final enum CONSTANT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum INPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum OUTPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "CONSTANT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "TEXTURE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/renderscript/Program$ProgramParam;

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    aput-object v6, v1, v2

    sget-object v2, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    aput-object v2, v1, v3

    sget-object v2, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/renderscript/Program$ProgramParam;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$ProgramParam;
    .registers 2

    const-class v0, Landroid/renderscript/Program$ProgramParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Program$ProgramParam;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Program$ProgramParam;
    .registers 1

    sget-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    invoke-virtual {v0}, [Landroid/renderscript/Program$ProgramParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$ProgramParam;

    return-object v0
.end method
