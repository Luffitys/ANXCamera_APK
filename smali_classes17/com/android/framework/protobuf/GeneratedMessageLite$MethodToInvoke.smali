.class public final enum Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
.super Ljava/lang/Enum;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodToInvoke"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum GET_PARSER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "BUILD_MESSAGE_INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "NEW_BUILDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "GET_DEFAULT_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "GET_PARSER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    sget-object v9, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->$VALUES:[Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    .registers 2

    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->$VALUES:[Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object v0
.end method
