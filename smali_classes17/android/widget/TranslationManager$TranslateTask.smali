.class Landroid/widget/TranslationManager$TranslateTask;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateTask"
.end annotation


# instance fields
.field mSource:Ljava/lang/String;

.field mTarget:Ljava/lang/String;

.field mWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    return-void
.end method

.method static equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    if-nez p0, :cond_2c

    if-nez p1, :cond_2c

    return v0

    :cond_2c
    return v1
.end method
