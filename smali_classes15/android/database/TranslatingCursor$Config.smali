.class public Landroid/database/TranslatingCursor$Config;
.super Ljava/lang/Object;
.source "TranslatingCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/TranslatingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final auxiliaryColumn:Ljava/lang/String;

.field public final baseUri:Landroid/net/Uri;

.field public final translateColumns:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/TranslatingCursor$Config;->baseUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    iput-object p3, p0, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    return-void
.end method
