.class public final Landroid/content/ContentResolver$MimeTypeInfo;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimeTypeInfo"
.end annotation


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
