.class final Landroid/service/autofill/ImageTransformation$Option;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Option"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final pattern:Ljava/util/regex/Pattern;

.field public final resId:I


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    iput p2, p0, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    invoke-static {p3}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method
