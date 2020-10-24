.class public interface abstract Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$ConnectionFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
