.class Lcom/android/framework/protobuf/nano/MapFactories$DefaultMapFactory;
.super Ljava/lang/Object;
.source "MapFactories.java"

# interfaces
.implements Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/nano/MapFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultMapFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/framework/protobuf/nano/MapFactories$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MapFactories$DefaultMapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public forMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_8
    return-object p1
.end method
