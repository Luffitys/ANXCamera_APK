.class public Lmiui/hybrid/HybridResourceResponse;
.super Ljava/lang/Object;
.source "HybridResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Lmiui/hybrid/HybridResourceResponse;->mEncoding:Ljava/lang/String;

    iput-object p3, p0, Lmiui/hybrid/HybridResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->mMimeType:Ljava/lang/String;

    return-void
.end method
