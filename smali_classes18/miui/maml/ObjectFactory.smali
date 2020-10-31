.class public abstract Lmiui/maml/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ObjectFactory$ActionCommandFactory;,
        Lmiui/maml/ObjectFactory$BitmapProviderFactory;,
        Lmiui/maml/ObjectFactory$ObjectFactoryBase;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOld()Lmiui/maml/ObjectFactory;
.end method

.method public abstract setOld(Lmiui/maml/ObjectFactory;)V
.end method
