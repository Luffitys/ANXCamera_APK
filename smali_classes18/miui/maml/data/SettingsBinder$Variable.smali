.class Lmiui/maml/data/SettingsBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Variable"
.end annotation


# instance fields
.field public mCategory:Lmiui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/data/SettingsBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-direct {p0, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    const-string p1, "category"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    goto :goto_18

    :cond_16
    sget-object p1, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    :goto_18
    iput-object p1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    const-string p1, "key"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public query()V
    .registers 8

    sget-object v0, Lmiui/maml/data/SettingsBinder$1;->$SwitchMap$miui$maml$data$SettingsBinder$Category:[I

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Lmiui/maml/data/SettingsBinder$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v1, :cond_79

    if-eq v0, v6, :cond_16

    goto/16 :goto_d9

    :cond_16
    iget v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mType:I

    if-eq v0, v6, :cond_63

    if-eq v0, v5, :cond_4e

    if-eq v0, v4, :cond_39

    if-eq v0, v3, :cond_24

    if-eq v0, v2, :cond_24

    goto/16 :goto_d9

    :cond_24
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_d9

    :cond_39
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_d9

    :cond_4e
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_d9

    :cond_63
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_74

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v1, v0

    :goto_75
    invoke-virtual {p0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_d9

    :cond_79
    iget v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mType:I

    if-eq v0, v6, :cond_c2

    if-eq v0, v5, :cond_ae

    if-eq v0, v4, :cond_9a

    if-eq v0, v3, :cond_86

    if-eq v0, v2, :cond_86

    goto :goto_d8

    :cond_86
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_d8

    :cond_9a
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_d8

    :cond_ae
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_d8

    :cond_c2
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    # getter for: Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/maml/data/SettingsBinder;->access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d3

    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    goto :goto_d4

    :cond_d3
    move-object v1, v0

    :goto_d4
    invoke-virtual {p0, v1}, Lmiui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    nop

    :goto_d8
    nop

    :goto_d9
    return-void
.end method
