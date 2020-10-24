.class public interface abstract Lcom/ss/android/vesdk/runtime/cloudconfig/IInjector;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract inject(Ljava/util/Map;Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;)V
    .param p2    # Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract parse(Lorg/json/JSONObject;)Ljava/util/Map;
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
