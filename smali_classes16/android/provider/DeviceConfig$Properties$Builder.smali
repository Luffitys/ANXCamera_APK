.class public final Landroid/provider/DeviceConfig$Properties$Builder;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfig$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mKeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    iput-object p1, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/provider/DeviceConfig$Properties;
    .registers 4

    new-instance v0, Landroid/provider/DeviceConfig$Properties;

    iget-object v1, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mNamespace:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public setBoolean(Ljava/lang/String;Z)Landroid/provider/DeviceConfig$Properties$Builder;
    .registers 5

    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFloat(Ljava/lang/String;F)Landroid/provider/DeviceConfig$Properties$Builder;
    .registers 5

    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInt(Ljava/lang/String;I)Landroid/provider/DeviceConfig$Properties$Builder;
    .registers 5

    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLong(Ljava/lang/String;J)Landroid/provider/DeviceConfig$Properties$Builder;
    .registers 6

    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties$Builder;
    .registers 4

    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties$Builder;->mKeyValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
