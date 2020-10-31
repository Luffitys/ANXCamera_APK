.class Lcom/android/framework/protobuf/Internal$MapAdapter$1;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/Internal$MapAdapter;->newEnumConverter(Lcom/android/framework/protobuf/Internal$EnumLiteMap;Lcom/android/framework/protobuf/Internal$EnumLite;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Internal$MapAdapter$Converter<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$enumMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;

.field final synthetic val$unrecognizedValue:Lcom/android/framework/protobuf/Internal$EnumLite;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;Lcom/android/framework/protobuf/Internal$EnumLite;)V
    .registers 3

    iput-object p1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->val$enumMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    iput-object p2, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->val$unrecognizedValue:Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doBackward(Lcom/android/framework/protobuf/Internal$EnumLite;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->doBackward(Lcom/android/framework/protobuf/Internal$EnumLite;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public doForward(Ljava/lang/Integer;)Lcom/android/framework/protobuf/Internal$EnumLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->val$enumMap:Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->val$unrecognizedValue:Lcom/android/framework/protobuf/Internal$EnumLite;

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method public bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$1;->doForward(Ljava/lang/Integer;)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object p1

    return-object p1
.end method
