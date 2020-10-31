.class public final enum Lcom/android/framework/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "ProtoSyntax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

.field public static final enum PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

.field public static final enum PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/framework/protobuf/ProtoSyntax;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    new-instance v0, Lcom/android/framework/protobuf/ProtoSyntax;

    const-string v1, "PROTO3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/framework/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/framework/protobuf/ProtoSyntax;

    sget-object v4, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->$VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 2

    const-class v0, Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->$VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method
