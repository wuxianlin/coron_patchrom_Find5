.class Landroid/content/res/Configuration$BaiduInjector;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendToString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "cfg"
    .parameter "sb"

    .prologue
    .line 57
    const-string v0, " themeChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method static compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "left"
    .parameter "right"
    .parameter "n"

    .prologue
    .line 83
    if-eqz p2, :cond_0

    move v0, p2

    .line 85
    .end local p2
    .local v0, n:I
    :goto_0
    return v0

    .line 84
    .end local v0           #n:I
    .restart local p2
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    sub-int p2, v1, v2

    move v0, p2

    .line 85
    .end local p2
    .restart local v0       #n:I
    goto :goto_0
.end method

.method static hashCode(Landroid/content/res/Configuration;I)I
    .locals 2
    .parameter "cfg"
    .parameter "result"

    .prologue
    .line 89
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/2addr v0, v1

    return v0
.end method

.method static multiTheme_dealThemeChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "cfg"
    .parameter "delta"
    .parameter "orig"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 66
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 67
    const/high16 v0, -0x8000

    .line 69
    :cond_0
    or-int v1, v0, p2

    return v1
.end method

.method static multiTheme_dealThemeChange2(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "cfg"
    .parameter "delta"
    .parameter "orig"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 77
    const/high16 v0, -0x8000

    .line 79
    :cond_0
    or-int v1, v0, p2

    return v1
.end method

.method static readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .parameter "configuration"
    .parameter "source"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 93
    return-void
.end method

.method static setThemeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "cfg"
    .parameter "that"

    .prologue
    .line 54
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 55
    return-void
.end method

.method static setThemeChangedToDefault(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "cfg"

    .prologue
    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 52
    return-void
.end method

.method static writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .parameter "cfg"
    .parameter "dest"

    .prologue
    .line 48
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
